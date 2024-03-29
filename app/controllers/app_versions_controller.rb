class AppVersionsController < ApplicationController
  # GET /app_versions
  # GET /app_versions.json
  def index
    @app_versions = AppVersion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_versions }
    end
  end


  # GET /app_versions/1
  # GET /app_versions/1.json
  def show
    @app_version = AppVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_version }
    end
  end

  # GET /app_versions/new
  # GET /app_versions/new.json
  def new
    @app_version = AppVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_version }
    end
  end

  # GET /app_versions/1/edit
  def edit
    @app_version = AppVersion.find(params[:id])
  end

  # POST /app_versions
  # POST /app_versions.json
  def create
    @app_version = AppVersion.new(params[:app_version])

    respond_to do |format|
      if @app_version.save
        format.html { redirect_to @app_version, notice: 'App version was successfully created.' }
        format.json { render json: @app_version, status: :created, location: @app_version }
      else
        format.html { render action: "new" }
        format.json { render json: @app_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_versions/1
  # PUT /app_versions/1.json
  def update
    @app_version = AppVersion.find(params[:id])

    respond_to do |format|
      if @app_version.update_attributes(params[:app_version])
        format.html { redirect_to @app_version, notice: 'App version was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_versions/1
  # DELETE /app_versions/1.json
  def destroy
    @app_version = AppVersion.find(params[:id])
    @app_version.destroy

    respond_to do |format|
      format.html { redirect_to app_versions_url }
      format.json { head :ok }
    end
  end
end
